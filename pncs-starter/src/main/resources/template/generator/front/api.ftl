import request from '@/utils/request'

const url = 'api/v1/${apiAlias}/${changeClassName}s'

export function add(data) {
  return request({
    url: url,
    method: 'post',
    data
  })
}

export function del(ids) {
  return request({
    url: url,
    method: 'delete',
    data: ids
  })
}

export function edit(data) {
  return request({
    url: url,
    method: 'put',
    data
  })
}

export default { add, edit, del }
