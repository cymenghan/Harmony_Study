export  interface CourseInterface{
  name: string
  time: string
  adress: string
}

export  const CourseData : Array<CourseInterface> = [
  {
    name: '鸿蒙应用开发',
    time:'8:20-10:00',
    adress:'二教607'
  },
  {
    name: 'JavaWeb开发',
    time:'10:20-12:00',
    adress:'二教607'
  },
  {
    name: '软件工程与UML',
    time:'14:20-16:00',
    adress:'二教607'
  },
  {
    name: '语文素养',
    time:'16:20-18:00',
    adress:'二教607'
  },
]