#include "CvGameCoreDLLPCH.h"

#include "FFileStream.h"
#include "FFileSystem.h"
#include "FFileDefines.h"

FFileStream::FFileStream()
    : m_pRef(NULL)
{
}

FFileStream::~FFileStream()
{
    Close();
}

bool FFileStream::Open(
    const char* szName,
    FIFile::OpenMode eMode,
    dword dwFlags,
    uint uiBufferSize)
{
    Close();

    if (szName == NULL)
        return false;

    m_pRef = FFILESYSTEM.Create();

    if (m_pRef == NULL)
        return false;

    FileErr err = m_pRef->Open(
        szName,
        eMode,
        dwFlags,
        uiBufferSize
    );

    if (err != FILE_OK)
    {
        delete m_pRef;
        m_pRef = NULL;
        return false;
    }

    m_uiBytesRead = 0;
    m_uiPosition = 0;

    if (dwFlags & FFILE_FLAG_BIG_ENDIAN)
        SetDesiredEndianNess(FEndian::ENDIAN_BIG);
    else
        SetDesiredEndianNess(FEndian::ENDIAN_LITTLE);

    return true;
}

bool FFileStream::Open(
    const wchar_t* wszName,
    FIFile::OpenMode eMode,
    dword dwFlags,
    uint uiBufferSize)
{
    Close();

    if (wszName == NULL)
        return false;

    m_pRef = FFILESYSTEM.Create();

    if (m_pRef == NULL)
        return false;

    FileErr err = m_pRef->Open(
        wszName,
        eMode,
        dwFlags,
        uiBufferSize
    );

    if (err != FILE_OK)
    {
        delete m_pRef;
        m_pRef = NULL;
        return false;
    }

    m_uiBytesRead = 0;
    m_uiPosition = 0;

    if (dwFlags & FFILE_FLAG_BIG_ENDIAN)
        SetDesiredEndianNess(FEndian::ENDIAN_BIG);
    else
        SetDesiredEndianNess(FEndian::ENDIAN_LITTLE);

    return true;
}

bool FFileStream::Close()
{
    if (m_pRef == NULL)
        return true;

    FileErr err = m_pRef->Close();

    delete m_pRef;
    m_pRef = NULL;

    return err == FILE_OK;
}

unsigned int FFileStream::ReadIt(
    unsigned int byteCount,
    void* buffer)
{
    if (m_pRef == NULL || buffer == NULL || byteCount == 0)
        return 0;

    uint bytesRead = m_pRef->Read(buffer, byteCount);

    m_uiBytesRead += bytesRead;
    m_uiPosition += bytesRead;

    return bytesRead;
}

unsigned int FFileStream::WriteIt(
    unsigned int byteCount,
    const void* buffer)
{
    if (m_pRef == NULL || buffer == NULL || byteCount == 0)
        return 0;

    uint bytesWritten = m_pRef->Write(buffer, byteCount);

    m_uiPosition += bytesWritten;

    return bytesWritten;
}

void FFileStream::Skip(unsigned int deltaByteCount)
{
    if (m_pRef == NULL)
        return;

    uint oldPosition = m_pRef->GetPosition();

    uint newPosition = m_pRef->Seek(
        (long)deltaByteCount,
        FIFile::current
    );

    if (newPosition != oldPosition)
        m_uiPosition = newPosition;
}

bool FFileStream::AtEnd() const
{
    if (m_pRef == NULL)
        return true;

    return m_pRef->IsEOF();
}

void FFileStream::Rewind()
{
    if (m_pRef == NULL)
        return;

    m_pRef->Rewind();
    m_uiPosition = 0;
}

void FFileStream::FastFwd()
{
    if (m_pRef == NULL)
        return;

    m_uiPosition = m_pRef->SeekToEnd();
}

void FFileStream::Truncate()
{
    if (m_pRef == NULL)
        return;

    m_pRef->SetLength(m_pRef->GetPosition());
}

void FFileStream::Flush()
{
    if (m_pRef == NULL)
        return;

    m_pRef->Flush();
}

unsigned int FFileStream::GetEOF() const
{
    if (m_pRef == NULL)
        return 0;

    return m_pRef->GetLength();
}

void FFileStream::RaiseException(
    std::exception& kException) const
{
    throw kException;
}

FIFile* FFileStream::GetFile()
{
    return m_pRef;
}

void FFileStream::SetFile(FIFile* file)
{
    if (m_pRef == file)
        return;

    Close();

    m_pRef = file;

    if (m_pRef != NULL)
        m_uiPosition = m_pRef->GetPosition();
    else
        m_uiPosition = 0;

    m_uiBytesRead = 0;
}
