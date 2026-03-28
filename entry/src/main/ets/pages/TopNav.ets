import { CourseUI } from '../components/CourseUI';
import { TopNavData, TopNavInterface } from '../models/TopNav';

@Entry
@Component
struct TopNav {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row() {
        ForEach(TopNavData, (item: TopNavInterface) => {
          TopNavItem({ TopNavMenu: item.name })
        })
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)

      CourseUI().margin({ top: 10 })
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct TopNavItem {
  @State TopNavMenu: string = " "
  @State selected: boolean = false
  @State TextColor: Color = Color.Black;

  build() {
    Column() {
      Text(this.TopNavMenu)
        .fontColor(this.selected ? Color.Orange : Color.Black)
        .onClick(() => {
          this.selected = !this.selected
          if (this.selected == true) {
            this.TextColor = Color.Orange
          }
        })
    }
  }
}
