import { CourseData, CourseInterface } from '../models/Course'

@Component
export struct CourseUI {
  build() {
    Column() {
      Grid() {
        ForEach(CourseData, (item: CourseInterface) => {
          GridItem() {
            Column() {
              Text(item.name)
                .padding({ top: 10 })
                .fontSize(20)
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