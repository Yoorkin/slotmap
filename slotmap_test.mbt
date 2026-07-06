///|
test "allocate_with initializes slot" {
  let slots : SlotMap[Int] = SlotMap()
  let id = slots.allocate_with(id => {
    let _ = id
    42
  })
  inspect(slots[id], content="42")
}
