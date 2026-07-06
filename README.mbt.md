# Slotmap

A small typed slot map for MoonBit. It stores values in reusable slots and
returns opaque `Id` handles that can be used for later reads and writes.

## Example

```mbt check
///|
test {
  let slots : SlotMap[Int] = SlotMap()
  let id = slots.allocate()
  slots[id] = 42
  inspect(slots[id], content="42")

  slots.free(id)
  let reused = slots.allocate()
  inspect(id == reused, content="false")
  slots[reused] = 7
  inspect(slots[reused], content="7")
}
```
