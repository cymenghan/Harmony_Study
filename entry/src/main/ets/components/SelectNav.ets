import { SymbolGlyphModifier } from '@kit.ArkUI';


@Component
export struct SelectNav {
  @State symbolModifier: SymbolGlyphModifier =
    new SymbolGlyphModifier($r('sys.symbol.exposure')).fontColor([Color.Gray]);
  @Consume('weekIdx') weekIdx: number = 0;

  build() {

    Column() {
      Select([{
        value: '第一周',
        symbolIcon: this.symbolModifier
      }, {
        value: '第二周',
        symbolIcon: this.symbolModifier
      }, {
        value: '第三周',
        symbolIcon: this.symbolModifier
      }, {
        value: '第四周',
        symbolIcon: this.symbolModifier
      }, {
        value: '第五周',
        symbolIcon: this.symbolModifier
      }])
        .selected(1)
        .value('课表')
        .font({ size: 16, weight: 500 })
        .selectedOptionFont({ size: 16, weight: 400 })
        .optionFont({ size: 16, weight: 400 })
        .space(8)
        .arrowPosition(ArrowPosition.END)
        .menuAlign(MenuAlignType.START, { dx: 0, dy: 0 })
        .avoidance(AvoidanceMode.COVER_TARGET)
        .onSelect((index: number, text?: string | undefined) => {
          this.weekIdx = index
          console.log('onselect: ' + index + ',' + text)
        })
    }.width('100%')
    .padding({ right: 24 })

  }
}