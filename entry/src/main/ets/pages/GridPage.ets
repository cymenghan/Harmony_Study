@Entry
@Component
struct GridPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Grid() {
        ForEach([1, 2, 3, 4, 5], () => {
          GridItem() {
            Text('hello')
          }.backgroundColor(Color.Pink)
          .borderRadius(16)
        })
      }
      .columnsTemplate('1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr')
      .backgroundColor('#ecec')
      .columnsGap(16)
      .rowsGap(16)
    }.height('100%')
    .width('100%')
  }
}