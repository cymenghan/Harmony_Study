@Entry
@Component
struct Index {
  build() {
    Column() {
      ForEach(['吃饭', '睡觉', '开会', '找资料'], (item: string, index: number) => {
        todoItem({ content: item }) //组件传参有JSON格式，需要有key和value
      })
    }.width('100%')
    .height('100%')
  }
}

@Component
export struct todoItem {
  @State ischecked: boolean = false;
  @State content: string = '';

  build() {
    Row() {
      SymbolGlyph(this.ischecked ? $r('sys.symbol.checkmark_circle_fill') : $r('sys.symbol.checkmark_circle'))
        .fontSize(30)
        .fontColor([Color.Orange])
        .onClick(() => {
          this.ischecked = !this.ischecked
        })
      Text(this.content)
        .decoration({
          type: this.ischecked ? TextDecorationType.LineThrough : TextDecorationType.None,
          color: Color.Red
        })
        .fontSize(30)
        .fontColor(Color.Orange)
    }
    .width('97%')
    .justifyContent(FlexAlign.SpaceBetween)
    .margin({ left: 10, right: 10, top: 10 })
    .padding({ left: 10, right: 20 })
    .border({ width: 1, color: Color.Gray, radius: 8 })
    .backgroundColor(this.ischecked ? Color.Gray : Color.Brown)
  }
}