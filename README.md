<!-- markdownlint-configure-file
{
  "required-headings": {
    "headings": [
      "# LyraPhase SSH Baseline InSpec Profile",
      "*",
      "## Standalone Usage",
      "*",
      "## Sponsor",
      "*",
      "## Author",
      "*",
      "### Upstream DevSec Authors",
      "*",
      "## License",
      "*"
    ]
  }
}
-->

# LyraPhase SSH Baseline InSpec Profile

This Compliance profile inherits from the [DevSec SSH Baseline][1]
InSpec profile.

Some controls are ignored because those OpenSSH features are useful and
convenient.

## Standalone Usage

This Compliance Profile requires [InSpec](https://github.com/chef/inspec) for execution:

```bash
git clone https://github.com/LyraPhase/ssh-baseline
inspec exec ssh-baseline
```

You can also execute the profile directly from Github:

```bash
inspec exec https://github.com/LyraPhase/ssh-baseline
```

## Sponsor

If you find this project useful and appreciate my work,
would you be willing to click one of the buttons below to Sponsor this project
and help me continue?

<!-- markdownlint-disable MD013  -->
| Method   | Button                                                                                                                 |
| :------- | :--------------------------------------------------------------------------------------------------------------------: |
| GitHub   | [💖 Sponsor](https://github.com/sponsors/trinitronx)                                                                   |
| Liberapay| [![Donate using Liberapay](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/trinitronx/donate)  |
| PayPal   | [![Donate with PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://paypal.me/JamesCuzella) |
<!-- markdownlint-enable MD013  -->

Every little bit is appreciated! Thank you! 🙏

## Author

* Author:: James Cuzella @trinitronx

* Copyright 2022, LyraPhase
* Copyright 2022, James Cuzella

### Upstream DevSec Authors

* Author:: Patrick Muench <patrick.muench1111@googlemail.com>
* Author:: Dominik Richter <dominik.richter@googlemail.com>
* Author:: Christoph Hartmann <chris@lollyrock.com>
* Author:: Edmund Haselwanter <me@ehaselwanter.com>

* Copyright 2014-2017, The DevSec Hardening Framework Team

## License

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[1]: https://github.com/dev-sec/ssh-baseline
