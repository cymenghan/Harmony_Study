import { CourseData, CourseInterface } from '../models/Course';

@Entry
@Component
struct GridPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Grid() {
        ForEach(CourseData, (item: CourseInterface) => {
          GridItem() {
            Column() {
              todoItem({ content: item.name })
              Text(item.time)
                .padding({ top: 10 })
                .fontSize(20)
              Text(item.adress)
                .padding({ top: 10 })
                .fontSize(20)
            }
          }.backgroundColor(Color.Pink)
          .borderRadius(16)
        })
      }
      .width('100%')
      .height('100%')
      .padding({
        left: 10,
        right: 10,
        top: 10,
        bottom: 10
      })
      .columnsTemplate('1fr 1fr')
      .rowsTemplate('1fr 1fr')
      .backgroundColor('#ecec')
      .columnsGap(16)
      .rowsGap(16)
    }.height('100%')
    .width('100%')
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