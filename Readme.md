## 针对TinaSDK快速构建开发工程


[![License](https://img.shields.io/badge/license-MIT-green.svg)]()
[![Language](https://img.shields.io/badge/language-c++14-red.svg)](https://en.cppreference.com/)
[![Platform](https://img.shields.io/badge/platform-linux%20-yellow.svg)](https://www.kernel.org/)
[![author](https://img.shields.io/badge/author-HFauto%20-y.svg)]()

### 授权协议
本项目自有代码使用宽松的MIT协议，在保留版权信息的情况下可以自由应用于各自商用、非商业的项目。
但是本项目也零碎的使用了一些其他的开源代码，在商用的情况下请自行替代或剔除；
由于使用本项目而产生的商业纠纷或侵权行为一概与本项目及开发者无关，请自行承担法律风险。
在使用本项目代码时，也应该在授权协议中同时表明本项目依赖的第三方库的协议。

### 概述
    可快速生成内核驱动程序、lvgl程序或配合GUI-Guider-1.6.1-GA软件快速构建gui与主程序解耦得程序

### 使用方法
```
1、ubuntu系统下解压SDK:Tina-Linux-20231212.tar.gz
2、工程编译依赖xmake，请先下载xmake
3、git clone https://github.com/HFauto/LVGL-Development-Project-for-TinaSDK.git
3、修改xmake.lua下的def_sdk_path地址为，自己SDK解压的地址。
4、xmake -v 编译
5、愉快开发吧

```

### 关于目录
```c
-build              //编译输出程序目录
-3rd
    -gui            //lvgl的gui工程
    -custom         //GUI-Guider-1.6.1-GA生成的
    -generated      //GUI-Guider-1.6.1-GA生成的
    -other          //其他为lvgl官方程序
-dri
    -hello           //驱动开发demo
-src
    -hello           //hello world！
    -lvgl_demo       //lvgl测试程序
    -lvgl_app        //配合GUI-Guider-1.6.1-GA生成的GUI界面快速开发自己app
-CMakeLists.txt      //使用xmake生成可配合clion开发，命令:xmake project -k cmakelists
-xmake.lua           //xmake文件
```

#### 特别感谢
本项目使用了咸鱼"与阿程一起做数采"的BingPi-M2开发板，这个板子做得很漂亮，以及学习他的部分教程，对此他表示感谢！