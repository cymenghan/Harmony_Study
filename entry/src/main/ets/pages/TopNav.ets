import { CourseUI } from '../components/CourseUI';
import { TopNavItem } from '../components/TopNavItem';
import { TopNavData, TopNavInterface } from '../models/TopNav';

@Entry
@Component
struct TopNav {
  @State message: string = 'Hello World';
  @Provide('curIdx') curIdx: number = 0

  build() {
    Column() {
      Row() {
        ForEach(TopNavData, (item: TopNavInterface, index: number) => {
          TopNavItem({
            menuName: item.name,
            menuColor: this.curIdx == index ? Color.Orange : Color.Gray,
            idx: index,
          })
        })
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)

      CourseUI().margin({ top: 10 })
    }
    .height('100%')
    .width('100%')
  }
}