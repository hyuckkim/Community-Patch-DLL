#include "CvGameCoreDLLPCH.h"

#include <iostream>
#include "FFileStream.h"
#include "CvGame.h"

int main(int argc, char** argv)
{
  if (argc < 2) {
    std::cout << "usage: loader.exe file.civ5save";
    return 1;
  }
  
  FFileStream stream;
  CvGame game;

  std::cout << "open save..." << std::endl;
  bool streamSuccess = stream.Open(argv[1]);
  if (!streamSuccess) {
    std::cout << "file " << argv[1] << "cannot open by stream";
    return 1;
  }

  std::cout << "prase save..." << std::endl;
  try {
    game.Read(stream);
  } catch (const std::exception& e) {
    std::cerr << "Read failed: " << e.what() << '\n';
    return 1;
  }
  catch (...) {
    std::cerr << "Read failed: unknown exception\n";
    return 1;
  }
  
  return 0;
}
