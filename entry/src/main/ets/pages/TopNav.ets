import { CourseUI } from '../components/CourseUI';
import { TopNavItem } from '../components/TopNavItem';
import { TopNavData, TopNavInterface } from '../models/TopNav';

@Entry
@Component
struct TopNav {
  @State message: string = 'Hello World';
<<<<<<< HEAD
  @Provide('curIdx') curIdx: number = 0
=======
  @State selectedIndex: number = -1; // 当前选中的菜单索引，-1表示未选中
>>>>>>> 456cba39cb4ea83cf40d47fdb2f85c5c966d25c2

  build() {
    Column() {
      Row() {
        ForEach(TopNavData, (item: TopNavInterface, index: number) => {
          TopNavItem({
<<<<<<< HEAD
            menuName: item.name,
            menuColor: this.curIdx == index ? Color.Orange : Color.Gray,
            idx: index,
=======
            TopNavMenu: item.name,
            isSelected: this.selectedIndex === index,
            onItemClick: () => {
              this.selectedIndex = index;
            }
>>>>>>> 456cba39cb4ea83cf40d47fdb2f85c5c966d25c2
          })
        })
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)

      CourseUI().margin({ top: 10 })
    }
    .height('100%')
    .width('100%')
  }
<<<<<<< HEAD
}
=======
}

@Component
struct TopNavItem {
  @Prop TopNavMenu: string = " ";
  @Prop isSelected: boolean = false;
  onItemClick: () => void = () => {};

  build() {
    Column() {
      Text(this.TopNavMenu)
        .fontColor(this.isSelected ? Color.Orange : Color.Black)
        .onClick(() => {
          this.onItemClick();
        })
    }
  }
}
>>>>>>> 456cba39cb4ea83cf40d47fdb2f85c5c966d25c2
