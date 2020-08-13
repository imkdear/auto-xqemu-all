sudo apt install git
git clone https://github.com/espes/xqemu.git
cd xqemu
git submodule update --init --recursive
sudo apt install clang
sudo apt build-dep qemu
sudo apt install libsdl1.2-dev libsdl1.2debian libsdl2-dev
sudo apt install libglew-dev
#sudo apt install libgl1-mesa-dev libgbm-dev libgbm1 libgl1-mesa-dri libglu1-mesa-dev libosmesa6-dev mesa-common-dev mesa-vulkan-drivers libdrm-dev
./configure --cc=clang --enable-opengl --enable-sdl --disable-vnc --disable-user --target-list=xbox-softmmu --extra-cflags="-march=native" --enable-debug
make -j8
sudo make install
cd ..

#################################
sudo apt install python3 python3-pip
git clone https://github.com/imkdear/auto-xqemu-manager.git
cd auto-xqemu-manager
chmod +x build-xqemu-manager.sh
./build-xqemu-manager.sh
