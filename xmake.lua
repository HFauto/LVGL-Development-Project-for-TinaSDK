-- Created by HFauto on 2024/4/14.

-- 设置SDK根目录
def_sdk_path = "/home/hfauto/03-T113"

set_config("plat", "cross")
set_config("arch", "arm")
set_config("sdk", def_sdk_path.."/prebuilt/gcc/linux-x86/arm/toolchain-sunxi-musl/toolchain")

target("hello")
    add_rules("platform.linux.driver")
    add_files("dri/hello/*.c")
    set_values("linux.driver.linux-headers", def_sdk_path.."/lichee/linux-5.4")
    set_license("GPL-2.0")

target("app_hello")
    set_kind("binary")
    add_files("src/hello/*.cpp")


target("app_lvgl_test")
    set_kind("binary")
    add_defines("LV_CONF_INCLUDE_SIMPLE")
    add_defines("LV_LVGL_H_INCLUDE_SIMPLE")
    add_defines("LV_DEV_CONF_INCLUDE_SIMPLE")
    add_defines("LV_DEMO_CONF_INCLUDE_SIMPLE")
    add_files("src/lvgl_test/*.c")
    add_includedirs("src/lvgl_test/")
    add_includedirs("3rd/gui")
    add_includedirs("3rd/gui/lvgl/src")
    add_includedirs("3rd/gui/lv_demos")
    add_includedirs("3rd/gui/lv_drivers")
    add_includedirs(def_sdk_path.."/out/t113-bingpi_m2/staging_dir/target/usr/include")
    add_linkdirs(def_sdk_path.."/out/t113-bingpi_m2/staging_dir/target/usr/lib")
    add_links("m", "pthread", "ts");

    local src_path = {
        "3rd/gui/lvgl/src",
        "3rd/gui/lv_demos",
        "3rd/gui/lv_drivers",
        "3rd/gui/custom",
        "3rd/gui/generated"
    }
    -- 递归遍历获取所有子目录
    for _, index in ipairs(src_path) do
        for _, dir in ipairs(os.dirs(index)) do
            add_files(dir.."/*.c");
            add_includedirs(dir);
        end
        for _, dir in ipairs(os.dirs(index.."/**")) do
            add_files(dir.."/*.c");
            add_includedirs(dir);
        end
    end

target("app_main")
    set_kind("binary")
    add_defines("LV_CONF_INCLUDE_SIMPLE")
    --add_defines("LV_LVGL_H_INCLUDE_SIMPLE")
    add_defines("LV_DEV_CONF_INCLUDE_SIMPLE")
    add_defines("LV_DEMO_CONF_INCLUDE_SIMPLE")
    add_files("src/lvgl_app/*.cpp")
    add_includedirs("src/lvgl_app/")
    add_includedirs("3rd/gui")
    add_includedirs("3rd/gui/lvgl/src")
    add_includedirs("3rd/gui/lv_demos")
    add_includedirs("3rd/gui/lv_drivers")
    add_includedirs("3rd/gui/custom")
    add_includedirs("3rd/gui/generated")
    add_includedirs(def_sdk_path.."/out/t113-bingpi_m2/staging_dir/target/usr/include")
    add_linkdirs(def_sdk_path.."/out/t113-bingpi_m2/staging_dir/target/usr/lib")
    add_links("m", "pthread", "ts");

local src_path = {
    "3rd/gui/lvgl/src",
    "3rd/gui/lv_demos",
    "3rd/gui/lv_drivers",
    "3rd/gui/custom",
    "3rd/gui/generated"
}
-- 递归遍历获取所有子目录
for _, index in ipairs(src_path) do
    for _, dir in ipairs(os.dirs(index)) do
        add_files(dir.."/*.c");
        add_includedirs(dir);
    end
    for _, dir in ipairs(os.dirs(index.."/**")) do
        add_files(dir.."/*.c");
        add_includedirs(dir);
    end
end