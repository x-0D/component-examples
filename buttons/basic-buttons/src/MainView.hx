package ;

import haxe.ui.events.MouseEvent;
import haxe.ui.containers.VBox;

@:xml('
<vbox style="padding:10px">
    <button id="theButton" text="Click Me!" icon="haxeui-core/styles/default/haxeui.png" iconPosition="top" style="color: blue; font-size: 24px;font-weight:bold;" />
</vbox>
')
class MainView extends VBox {
    @:bind(theButton, MouseEvent.CLICK)
    private function onButton(_) {
        theButton.text = "Thanks!";
    }
}