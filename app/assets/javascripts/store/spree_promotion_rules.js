//= require store/spree_core
jQuery ($) ->
  $('.tokeninput.roles').tokenInput("/admin/roles.json?" + "authenticity_token=" + escape(AUTH_TOKEN), {
    searchDelay          : 600,
    hintText             : strings.type_to_search,
    noResultsText        : strings.no_results,
    searchingText        : strings.searching,
    processPrePopulate   : true
  })
