const collectStrings = (obj) => {
  let result = []

  for (let key in obj) {
    if (typeof obj[key] === 'string') {
      result.push(obj[key])
    } else if (typeof obj[key] === 'object') {
      result = result.concat(collectStrings(obj[key]))
    }
  }

  return result
}

const objTest = {
  stuff: "foo",
  data: {
    val: {
      thing: {
        info: "bar",
        moreInfo: {
          evenMoreInfo: {
            weMadeIt: "baz"
          }
        }
      }
    }
  }
}

console.log(collectStrings(objTest))
