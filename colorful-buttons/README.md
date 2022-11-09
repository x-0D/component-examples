# Colorful Buttons
This example shows 7 buttons, each with a different color.
Clicking a button turns the background of the app the same color as the button.

This example includes project files for a composite and a native backend.

# Composite (HTML)
There are various composite backends targeting mobile, desktop and even consoles.
This example includes the HTML backend because it doesn't require installing a toolkit.

![web_app](html.png)

# Native (wxwidgets)
The native target uses the native components of each platform (Windows, Mac, Linux).
The Linux version uses the GTK toolkit.
![native_app](wxwidgets.png)

**NOTE**: Compiling to this target requires [installing an additional toolkit](https://www.haxeui.org/getting-started/haxeui-hxwidgets/)!

# Code
This code can be found in `src/Main.hx`.

```haxe
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

	app.start();
});
```