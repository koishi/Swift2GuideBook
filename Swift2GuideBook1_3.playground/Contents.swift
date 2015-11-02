//1-3-1

class SampleClass
{
  deinit {
    print("deinit")
  }
}

var sample: SampleClass? = SampleClass()

sample = nil // deinitが呼ばれる
