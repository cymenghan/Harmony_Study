import { Course } from '../components/Course';
import { SelectNav } from '../components/SelectNav';
import { TopNavItem } from '../components/TopNavItem';
import { CourseInterface, termCourseList, WeekCourseInterface } from '../models/Course';

@Entry
@Component
export struct TopNav {
  @State message: string = 'Hello World';
  @Provide('curIdx') curIdx: number = 0
  @Provide('weekIdx') weekIdx: number = 0

  build() {
    Column() {
      // //顶部菜单
      // Row() {
      //   ForEach(TopNavData, (item: TopNavInterface, index: number) => {
      //     TopNavItem({
      //       menuName:item.name,
      //       menuColor: this.curIdx == index ? Color.Orange : Color.Gray,
      //       idx: index,
      //     })
      //   })
      // }.width('100%')
      // .justifyContent(FlexAlign.SpaceEvenly)

      Row() {
        //顶部
        Text('2026年4月2日 23C*').fontSize(14)
        SelectNav()
      }
      .height(80)
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .padding({ left: 12, right: 12 })
      .backgroundColor(Color.Orange)

      //天导航栏
      Row() {
        ForEach(termCourseList[this.weekIdx].weekcourse,
          (item: WeekCourseInterface, index: number) => {
            TopNavItem({
              menuName: item.day,
              menuColor: this.curIdx == index ? Color.Orange : Color.Gray,
              idx: index
            })
          })
      }
      .width("100%")
      .height("10%")
      .justifyContent(FlexAlign.SpaceEvenly)
      .backgroundColor("#ecec")

      //课表区域
      Grid() {
        ForEach(termCourseList[this.weekIdx]?.weekcourse[this.curIdx].daycourse, (item: CourseInterface) => {
          GridItem() {
            Course({
              courseName: item.name,
              courseTime: item.time,
              courseAddr: item.address
            })
          }
          .margin({ bottom: 12 })
          .borderRadius(12)
          .backgroundColor(Color.Pink)
        })
      }
      .columnsTemplate('1fr 1fr')
      .rowsTemplate('1fr 1fr 1fr')
      .rowsGap(12)
      .columnsGap(12)
      .padding({
        left: 12,
        right: 12,
        top: 12,
        bottom: 12
      })
      .backgroundColor('#ecec')
    }.layoutWeight(1)
    .justifyContent(FlexAlign.Start)

  }
}

