package ;

import haxe.ui.util.ColorUtil;
import haxe.ui.components.Button;
import haxe.ui.containers.HBox;
import haxe.ui.HaxeUIApp;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            var hbox:HBox = new HBox();
            hbox.percentWidth = 100;
            hbox.percentHeight = 100;

            for (i in 1...8) {
                var button:Button = new Button();
                button.text = 'Button $i';
                button.onClick = (e) -> {
                    trace('Button $i clicked');
                    hbox.backgroundColor = button.backgroundColor;
                }
                button.backgroundColor = ColorUtil.fromHSL(200 + (i * 50), 100, 75.0);
                hbox.addComponent(button);
            }

            app.addComponent(hbox);
            app.title = 'HaxeUI Demo';

            app.start();
        });
    }
}
