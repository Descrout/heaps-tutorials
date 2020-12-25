import screens.Gameplay;
import screens.Screen;

class Game extends hxd.App{
    public static var instance(get,null): Game;

    private static function get_instance():Game{
        if(instance == null) instance = new Game();
        return instance;
    }

    private function new() {
        super();
    }

    private var screen:Screen;

    override function init() {
        setScreen(new Gameplay());
    }

    public function setScreen(screen:Screen){
        setScene(screen);
        this.screen = screen;
        screen.init();
    }

    override function update(dt:Float) {
        screen.update(dt);
    }
}