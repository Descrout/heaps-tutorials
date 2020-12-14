package screens;


class Gameplay extends Screen {
    override function init() {
        trace("Gameplay init");
    }

    override function update(dt:Float) {
        trace("Gameplay update");
    }

    override function dispose() {
        super.dispose();
        trace("Gameplay dispose");
    }
}