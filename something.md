Scaffold 包含三个部分，appBar、body、bottomNavigationBar

bottomNavigationBar 使用 item 构造，可以对选中和不选中设置不同图标，默认会显示标签，可以通过参数设置禁用显示 showSelectedLabels。elevation 参数反映的是 bottomBar 的凸起高度。

创建 container 对象，内部使用 decoration 对内容进行调整。

mainAxisAlignment 设置分布格式。

初始化使用的常量使用 static final 修饰。

使用 SizedBox 在组件之间增加空间。

alt + enter 触发 AS 快捷键，可以快速添加父组件。

copyWith 可以修改类中对象的属性。

margin 在外，padding 在内，Spacer 可以直接撑起整个空间。 

transform.rotate 可以旋转 widget。

使用 stack 可以对组件进行堆叠。 

鼠标放置在 LayoutBuilder 上会自动出现 builder 的提示。

对于 2 * 3 的网格文本，用行去包裹列更好一些，同一列的宽度由最长的文本决定，之后在 Row 中调用 spaceBetween 即可均匀分布。