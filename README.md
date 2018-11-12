#### TODO

让所有操作都可以组合并设置优先级，支持异步事件，目前正在设计当中

#### 目前设计思路如下
通过Combinaton对任意类进行扩展出ct属性，再通过base指定类型，对具体类型进行扩展，比如对apiManager而言，我们可以扩展出其loadData操作为

```
 func loadDataAction(_ action, actionCallback) -> CombinationAble<Base> {
        return CombinationAble {action, actionCallback in
            action()
            if let callback = actionCallback {
                let res = actionCallback
                self.isComplete = true
                
            }
        }
    }
```
