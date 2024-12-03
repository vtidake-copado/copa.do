export function getTemplateFilterAsText(queryFilters, templateFilterLogic) {
    const filterLogic = templateFilterLogic.replace(/\b\d+\b/g, (match) => {
        const index = queryFilters.findIndex(filterRecord => filterRecord.order?.toString() === match);
        if (index !== -1) {
            return queryFilters[index].finalValue;
        }
        return match;
    });
    return filterLogic;
}