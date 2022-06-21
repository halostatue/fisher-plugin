# These functions are examples only and should be named appropriately, as should their events. The name of the event is
# The event is sent once for reach file associated with the `conf.d/` files using the equivalent of `(basename
# conf.d/basename .fish)_<event>`, where `<event>` is one of `install`, `update`, or `uninstall`.

function _ponyo_install --on-event ponyo_install
    # Set universal variables, create bindings, and other initialization logic.
end

function _ponyo_update --on-event ponyo_update
    # Migrate resources, print warnings, and other update logic.
end

function _ponyo_uninstall --on-event ponyo_uninstall
    # Erase "private" functions, variables, bindings, and other uninstall logic.
    functions -e (functions -a | string match --entire --regex '__ponyo_private_')
end
