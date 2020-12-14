# Installation
- Install Haxe : https://haxe.org/download/
- Install Hashlink : [download](https://github.com/HaxeFoundation/hashlink/releases) & [build](https://github.com/HaxeFoundation/hashlink/wiki/Building-and-Installing)
- For Windows Path : https://docs.alfresco.com/4.2/tasks/fot-addpath.html
- Install Git : https://git-scm.com/downloads
- ``haxelib install heaps`` or ``haxelib git heaps https://github.com/HeapsIO/heaps.git``
- ``haxelib install hldx``
- ``haxelib install hlopenal``
- ``haxelib install hlsdl``
- ``git clone https://github.com/Descrout/heaps-starter.git``

# Project Structure
```
.
├── .vscode/
│   └── launch.json
├── res/
├── src/
│   └── Main.hx
└── compile.hxml
```
# compile.hxml
```
-cp src
-lib heaps
-lib hlsdl #lib hldx for windows
-hl main.hl
-main Main
#-D windowSize=1366x768
```
# Main.hx
```haxe
class  Main  extends hxd.App {
  override  function  init() {
	  var  tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
	  tf.text = "Hello World !";
  }
  static  function  main() {
	  new  Main();
  }
}
```
# .vscode/launch.json
```json
{
	"version": "0.2.0",
	"configurations": [
        {
            "name": "HashLink",
            "request": "launch",
            "type": "hl",
            "cwd": "${workspaceFolder}",
            "preLaunchTask": {
                "type": "haxe",
                "args": "active configuration"
            }
        }
	]
}
```
