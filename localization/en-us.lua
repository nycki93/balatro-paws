function replaceAll(node)
    if type(node) == 'table' then
        local new_table = {}
        for k, v in pairs(node) do
            new_table[k] = replaceAll(v)
        end
        return new_table
    elseif type(node) == 'string' then
        node = node:gsub('%f[%a]hand%f[%A]', 'paw')
        node = node:gsub('%f[%a]Hand%f[%A]', 'Paw')
        node = node:gsub('%f[%a]hands%f[%A]', 'paws')
        node = node:gsub('%f[%a]Hands%f[%A]', 'Paws')
        return node
    end
end

return replaceAll(G.localization)
