#
# Cookbook Name:: repo_git
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

rightscale_marker :begin

# Install git client
case node[:platform]
when "debian", "ubuntu"
  package "git-core"
else
  package "git"
end

package "gitk"
package "git-svn"
package "git-email"

rightscale_marker :end
