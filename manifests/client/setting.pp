# Define - mcollective::client::setting
define mcollective::client::setting (
  $value,
  $setting = $name,
  $order   = '30',
) {
  ::mcollective::setting { "mcollective::client::setting ${title}":
    setting => $setting,
    value   => $value,
    target  => [ 'mcollective::client', 'mcollective::user' ],
    order   => $order,
  }
}
