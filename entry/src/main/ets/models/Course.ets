export interface CourseInterface {
  name: string
  time: string
  address: string
}

export interface WeekCourseInterface {
  day: string,
  daycourse: CourseInterface[]
}

export const WeekCourseList: Array<WeekCourseInterface> = [
  {
    day: "星期一",
    daycourse: [
      {
        name: "语文素养",
        time: "8:20-10:00",
        address: "2教-607"
      },
      {
        name: "形式与政策",
        time: "10:20-12:00",
        address: "2教-607"
      },
      {
        name: "毛概",
        time: "14:20-16:00",
        address: "2教-607"
      },
      {
        name: "计算机视觉",
        time: "16:20-18:00",
        address: "图书馆205"
      }
    ]
  },
  {
    day: "星期二",
    daycourse: [
      {
        name: "JavaWeb",
        time: "8:20-10:00",
        address: "2教-607"
      },
      {
        name: "软件工程",
        time: "10:20-12:00",
        address: "图书馆401"
      },
      {
        name: "职业发展与就业指导",
        time: "14:20-16:00",
        address: "2教-607"
      },
      {
        name: "鸿蒙应用开发",
        time: "16:20-18:00",
        address: "图书馆205"
      }
    ]
  },
  {
    day: '星期三',
    daycourse: [
      {
        name: "习概",
        time: "8:20-10:00",
        address: "2教-607"
      },
      {
        name: "JavaWeb",
        time: "10:20-12:00",
        address: "2教-607"
      }
    ]
  },
  {
    day: '星期四',
    daycourse: [
      {
        name: "鸿蒙应用开发",
        time: "10:20-12:00",
        address: "2教-607"
      },
      {
        name: "计算机视觉",
        time: "14:20-16:00",
        address: "2教-607"
      },
      {
        name: "JavaWeb",
        time: "16:20-18:00",
        address: "图书馆205"
      }
    ]
  },
  {
    day: '星期五',
    daycourse: [
      {
        name: "体育",
        time: "8:20-10:00",
        address: "操场"
      },
      {
        name: "鸿蒙应用开发",
        time: "10:20-12:00",
        address: "2教-607"
      }
    ]
  }
]