package screens;

class Menu extends Screen {
    var timer:Float;
    override function init() {
        trace("Menu init");
    }

    override function update(dt:Float) {
        trace("Menu update");
        timer += dt;
        if(timer>=2.0) Game.instance.setScreen(new Gameplay());
    }

    override function dispose() {
        super.dispose();
        trace("Menu dispose");
    }
}