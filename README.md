# RTE website for open-source projects

This GitHub pages website aims to centralize links to RTE's GitHub projects.

## Adding an entry to your project

1. Ask for Write access to this repo (you can open a new issue or contact a team member), in order to be able to open a
   Pull Request
2. Create a page under "_projects_lfe", "_projects_rte", or "_projects_contribution" (depending on the type of your
   project) with the name of your project, by copying the template [here](docs/project_template.md)
3. Fill out the template; you can find inspiration in existing project pages
4. Add your logo / images to the ["assets/images"](assets/images) directory if needed (create a subdirectory for your
   project)
5. To preview the result on your PC, you must first install ruby bundler & development kits, for example on ubuntu:
   ~~~bash
   apt install ruby-bundler
   apt install ruby-dev
   ~~~
   Then run the following lines:
   ~~~bash
   bundle install
   bundle exec jekyll serve
   ~~~
6. Open a pull request
7. We will review your pull request and merge it when everything is OK!

## Contributing to improving the website

You are welcome to suggest improvements to the overall UX / UI of the website.  
First of all, you need to as for Write access (see above). Then you can open pull requests.    
The website uses [Jekyll](https://jekyllrb.com) with
the [minimal-mistakes](https://github.com/mmistakes/minimal-mistakes) theme.  
Most of the features are configured in the [_config?yml](_config.yml) file.  
Some custom HTML & CSS has been necessary in order to make the website look the way it does. The source code of these
customizations
is in the [_includes](_includes), [_layouts](_layouts), and [_sass](_sass) directories. These are meant to override or
augment the theme's
default resources.  
