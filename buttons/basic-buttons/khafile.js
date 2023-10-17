let project = new Project('Main');


const haxeui_kha_dir = await new Promise((resolve, reject) => {
    require('child_process').execFile('haxelib', ['path', 'haxeui-kha'], {}, (err, data) => {
        if (err) reject(err);
        else resolve(data.split("\n")[0].trim());
    });
});
  
console.log("Using haxeui-kha from: " + haxeui_kha_dir);

//project.addAssets('./assets/**');
project.addSources('./src');

project.addLibrary('haxeui-core');
await project.addProject(haxeui_kha_dir);

resolve(project);
