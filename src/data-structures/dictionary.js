/**
 * 返回任意类型的字符串形式
 * @param {any} item 
 */
function defaultToString (item) {
  if (item === null) {
    return 'NULL'
  } else if (item === undefined) {
    return 'UNDEFINED'
  } else if (typeof item === 'string' || item instanceof String) {
    return `${item}`
  }
  return item.toString()
}

class ValuePair {
  constructor(key, value) {
    this.key = key
    this.value = value
  }

  toString () {
    return `${this.key}: ${this.value}`
  }
}

class Dictionary {
  constructor(toStrFn = defaultToString) {
    this.toStrFn = toStrFn
    this.table = {}
  }

  hasKey (key) {
    return this.table[this.toStrFn[key]] != null
  }

  set (key, value) {
    if (key != null && value != null) {
      const tableKey = this.toStrFn(key)
      this.table[tableKey] = new ValuePair(key, value)
      return true
    }

    return false
  }

  remove (key) {
    if (this.hasKey(key)) {
      Reflect.defineProperty(this.table, this.toStrFn(key))
      return true
    }

    return false
  }

  get (key) {
    const valuePair = this.table[this.toStrFn[key]]
    return valuePair == null ? undefined : valuePair.value
  }
}