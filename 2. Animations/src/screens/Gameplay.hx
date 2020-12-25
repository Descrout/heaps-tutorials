package screens;



class Gameplay extends Screen {
    var playerAnims: Animation;
    var time: Float = 0.0;
    override function init() {
        trace("Gameplay init");
        playerAnims = new Animation(this);
        playerAnims.add("idle", hxd.Res.myAtlas.getAnim("adventurer-idle"), 8);
        playerAnims.add("run", hxd.Res.myAtlas.getAnim("adventurer-run"), 8);
    }

    override function update(dt:Float) {
        time += dt;
        if(time >= 2.0) {
            playerAnims.change("run");
            playerAnims.x += 100 * dt;
        }
        trace("Gameplay update");
    }

    override function dispose() {
        super.dispose();
        trace("Gameplay dispose");
    }
}