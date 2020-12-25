typedef AnimContainer = {tiles: Array<h2d.Tile>, loop: Bool, speed: Float};

class Animation extends h2d.Anim {
    var anims : Map<String, AnimContainer>;
    var currAnim: String;

    public function new(parent: h2d.Object) {
        super(parent);
        anims = new Map();
    }

    public function add(name: String, tiles: Array<h2d.Tile>, ?speed: Float = 15, ?loop: Bool = true) {
        anims.set(name, {tiles: tiles, speed: speed, loop: loop});
        if(currAnim == null) play_anim(name);
    }

    public function change(name : String) {
        if(currAnim == name || !anims.exists(name)) return;
        play_anim(name);
    }

    public function restart() {
        play(anims[currAnim].tiles);
    }

    private function play_anim(name: String) {
        currAnim = name;
        loop = anims[currAnim].loop;
        speed = anims[currAnim].speed;
        play(anims[currAnim].tiles);
    }
}