# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
    answer = [0] * temperatures.length
    stack = []

    temperatures.each_with_index do |temp,i|
        while !stack.empty? && temp > temperatures[stack.last]
            prev_index = stack.pop
            answer[prev_index] = i - prev_index
        end

        
        stack << i
    end
    answer
end

=begin
explanation:
Sure! Let's walk through an example step-by-step using your Ruby method `daily_temperatures` with the input:

```ruby
temperatures = [73, 74, 75, 71, 69, 72, 76, 73]
```

---

### ❓ Goal:

For each day, find out how many days you'd have to wait until a warmer temperature. If there's no future day with a warmer temperature, put `0`.

---

### 🔍 Step-by-Step Dry Run:

Initialize:

```ruby
ans = [0, 0, 0, 0, 0, 0, 0, 0]
stack = []
```

Now iterate using `each_with_index`:

#### i = 0, temp = 73

* Stack is empty, push index `0`: `stack = [0]`

#### i = 1, temp = 74

* 74 > 73 → pop index `0` → `ans[0] = 1 - 0 = 1`
* stack = \[]
* push `1`: `stack = [1]`
* `ans = [1, 0, 0, 0, 0, 0, 0, 0]`

#### i = 2, temp = 75

* 75 > 74 → pop `1` → `ans[1] = 2 - 1 = 1`
* stack = \[]
* push `2`: `stack = [2]`
* `ans = [1, 1, 0, 0, 0, 0, 0, 0]`

#### i = 3, temp = 71

* 71 < 75 → push `3`: `stack = [2, 3]`

#### i = 4, temp = 69

* 69 < 71 → push `4`: `stack = [2, 3, 4]`

#### i = 5, temp = 72

* 72 > 69 → pop `4` → `res[4] = 5 - 4 = 1`
* 72 > 71 → pop `3` → `res[3] = 5 - 3 = 2`
* 72 < 75 → stop
* push `5`: `stack = [2, 5]`
* `res = [1, 1, 0, 2, 1, 0, 0, 0]`

#### i = 6, temp = 76

* 76 > 72 → pop `5` → `res[5] = 6 - 5 = 1`
* 76 > 75 → pop `2` → `res[2] = 6 - 2 = 4`
* stack = \[]
* push `6`: `stack = [6]`
* `res = [1, 1, 4, 2, 1, 1, 0, 0]`

#### i = 7, temp = 73

* 73 < 76 → push `7`: `stack = [6, 7]`

---

### ✅ Final Output:

```ruby
[1, 1, 4, 2, 1, 1, 0, 0]
```
=end