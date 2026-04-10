@Component
export struct TopNav {
  @Prop menuName: string = ''
  @Prop menuID: number = 0
  @Prop menuColor: ResourceColor
  @Consume('curIdx') curIdx: number = 0

  build() {
    Text(this.menuName)
      .fontColor(this.menuColor)
      .onClick(() => {
        console.log('onclick: ' + this.menuID);
        this.curIdx = this.menuID
      })
  }
}