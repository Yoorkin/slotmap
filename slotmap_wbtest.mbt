///|
test "free recycles slot with fresh id" {
  let slots : SlotMap[Int] = SlotMap()
  let first = slots.allocate()
  slots[first] = 42

  slots.free(first)
  inspect(slots.free.length(), content="1")

  let second = slots.allocate()
  inspect(first.idx == second.idx, content="true")
  inspect(first.gen == second.gen, content="false")
  inspect(slots.free.length(), content="0")

  slots[second] = 7
  inspect(slots[second], content="7")
}
