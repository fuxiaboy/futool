import { ObjectUtil } from '../src/utils/ObjectUtil'

test('ObjectUtil.isEmpty should return true for empty object', () => {
	expect(ObjectUtil.isEmpty({})).toBe(true)
})
