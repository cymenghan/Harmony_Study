import { me } from '../components/me';
import { TopNav } from '../components/TopNav';
import { SymbolGlyphModifier } from '@kit.ArkUI';

@Entry
@Component
struct MyCoursePage {
  @State message: string = 'Hello World';
  @State bm1icon: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.house'))
  @State bm2icon: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.person'))

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        TabContent() {
          TopNav()
        }.tabBar(new BottomTabBarStyle({ normal: this.bm1icon, }, '首页').padding({ top: 10 }))

        TabContent() {
          me()
        }.tabBar(new BottomTabBarStyle({ normal: this.bm2icon, }, '我的').padding({ top: 10 }))
      }
      .vertical(false)
      .scrollable(true)
      .barMode(BarMode.Fixed)
    }
    .height('100%')
    .width('100%')

  }
}