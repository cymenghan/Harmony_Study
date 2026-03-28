import { CourseUI } from '../components/CourseUI';

@Entry
@Component
struct GridPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      CourseUI()
    }
  }
}

@Component
struct todoItem {
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
          color: Color.Orange
        })
        .fontSize(18)
        .fontColor(Color.Orange)
    }
    .width('97%')
    .justifyContent(FlexAlign.Center)
  }
}