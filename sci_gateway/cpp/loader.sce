// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
libtest_toolbox_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('libtest_toolbox');
if bOK then
  ulink(ilib);
end
//
list_functions = [ 'multiply';
];
addinter(libtest_toolbox_path + filesep() + 'libtest_toolbox' + getdynlibext(), 'libtest_toolbox', list_functions);
// remove temp. variables on stack
clear libtest_toolbox_path;
clear bOK;
clear ilib;
clear list_functions;
// ----------------------------------------------------------------------------
