@Component
export struct Course {
  @State courseName: string = ''
  @State courseTime: string = ''
  @State courseAddr: string = ''

  build() {
    Column() {
      Text(this.courseName)
      Text(this.courseTime)
      Text(this.courseAddr)
    }

  }
}