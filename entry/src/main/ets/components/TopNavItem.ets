@Component
export struct TopNavItem {
  @Prop menuName: string = ''
  @Prop menuColor: ResourceColor
  @Prop idx: number = 0
  @Consume('curIdx') curIdx: number = 0

  build() {
    Text(this.menuName)
      .fontColor(this.menuColor)
      .onClick(() => {
        this.curIdx = this.idx
      })
  }
}