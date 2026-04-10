@Builder
export function CourseDetailBuilder() {
  CourseDetailPage()
}

@Entry
@Component
struct CourseDetailPage {
  @State message: string = 'Hello World';

  build() {
    NavDestination() {
      RelativeContainer() {
        Text(this.message)
          .id('CourseDetailPageHelloWorld')
          .fontSize($r('app.float.page_text_font_size'))
          .fontWeight(FontWeight.Bold)
          .alignRules({
            center: { anchor: '__container__', align: VerticalAlign.Center },
            middle: { anchor: '__container__', align: HorizontalAlign.Center }
          })
          .onClick(() => {
            this.message = 'Welcome';
          })
      }
      .height('100%')
      .width('100%')
    }
  }
}