import { CourseUI } from '../components/CourseUI';
import { TopNavData, TopNavInterface } from '../models/TopNav';

@Entry
@Component
struct TopNav {
  @State message: string = 'Hello World';
  @State selectedIndex: number = -1; // 当前选中的菜单索引，-1表示未选中

  build() {
    Column() {
      Row() {
        ForEach(TopNavData, (item: TopNavInterface, index: number) => {
          TopNavItem({
            TopNavMenu: item.name,
            isSelected: this.selectedIndex === index,
            onItemClick: () => {
              this.selectedIndex = index;
            }
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
