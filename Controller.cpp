#include "Controller.h"
#include <stdlib.h>
#include <iostream>
#include <fstream>

Controller::Controller()
{

}

void Controller::setUsbInfo(QString value){
    _usbInfo = value;
}
//tets start

QString Controller::getUsbInfo(){
    //system("dmesg | grep -i usb > lab1.txt");
    //system("dmesg | grep -i usb > lab1.txt");
//    std::ifstream fileusb("lab1.txt");
//    std::string line;
//    std::string result;
//    std::string buffer;
//    if (fileusb){}
//    while(!fileusb.eof()){
//        std::getline(fileusb, line);
//        result.append(line + "\n");
//    }
//    result.append();


//    _usbInfo = QString::fromStdString(result);
//    fileusb.close();
    std::ifstream file("/home/denis/Рабочий стол/qwe/build-Lab-Desktop-Debug/lab1.txt");
    std::string result;
    std::string line;

    if(!file)
    {
        std::cout<<"bad :(";
    }
    else
    {
        std::cout<<"good :)";
    }
    while(!file.eof())
    {

        std::getline(file, line);
        result.append(line + "\n");
    }
    _usbInfo = QString::fromStdString(result);
    file.close();
    return _usbInfo;
}
