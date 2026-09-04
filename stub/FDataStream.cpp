#include "FDataStream.h"
#include "FEndian.h"

FDataStream::FDataStream()
    : m_bEnableCB(false)
    , m_eEndianness(FEndian::GetEndianness())
    , m_uiBytesRead(0)
    , m_uiPosition(0)
{
}

FDataStream::~FDataStream()
{
}

unsigned int FDataStream::GetBytesUsed() const
{
    return m_uiBytesRead;
}

unsigned int FDataStream::GetPosition() const
{
    return m_uiPosition;
}

void FDataStream::SetPosition(unsigned int position)
{
    if (position == m_uiPosition)
        return;

    if (position > m_uiPosition)
    {
        Skip(position - m_uiPosition);
    }
    else
    {
        Rewind();

        if (position != 0)
            Skip(position);
    }
}

void FDataStream::Truncate()
{
}

void FDataStream::Flush()
{
}

unsigned int FDataStream::GetEOF() const
{
    return m_uiPosition;
}

unsigned int FDataStream::GetSizeLeft() const
{
    unsigned int eof = GetEOF();

    if (m_uiPosition >= eof)
        return 0;

    return eof - m_uiPosition;
}

void FDataStream::CopyToMem(void* mem)
{
    if (mem == NULL)
        return;

    unsigned int bytesLeft = GetSizeLeft();

    if (bytesLeft != 0)
        ReadIt(bytesLeft, mem);
}

void FDataStream::RaiseException(
    std::exception& kException) const
{
    throw kException;
}