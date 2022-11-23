# 動作確認 : まずは、コードの内容は置いておき、動作するかを確認しましょう。
from kivy.app import App
from kivy.uix.label import Label
import japanize_kivy

class Test(App):
    def build(self):
         return Label( 
             text="動作テストです。",
             font_size = 60
         )

if __name__=='__main__':
    Test().run()
