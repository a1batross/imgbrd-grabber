import QtQuick 2.12

Item {
    id: root

    property string key
    property var def
    property var obj: settings

    property string value: root.obj ? root.obj.value(root.key, root.def) : undefined

    function setValue(val, refresh) {
        root.obj.setValue(root.key, val, root.def)
        if (refresh !== false) {
            root.value = val
        }
    }
}
