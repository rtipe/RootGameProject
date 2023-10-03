#include <iostream>
#include "UnitiGame.hpp"
#include "VasselMovement.hpp"
#include "ForwardParallax.hpp"

int main()
{
    try {
        UnitiGameEngine::Uniti::initGameProject("../Json/projectInfos.json");

        UnitiGameEngine::Uniti::getInstance().getScriptFactory().addScript<VasselMovement>("VasselMovement");
        UnitiGameEngine::Uniti::getInstance().getScriptFactory().addScript<ForwardParallax>("ForwardParallax");

        UnitiGameEngine::Uniti::getInstance().start();
    } catch (std::exception &e) {
        std::cout << e.what() << std::endl;
    }
    return 0;
}