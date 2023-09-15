[![License](https://img.shields.io/github/license/OpenSmock/TestProjectForBaseline.svg)](./LICENSE)

<badges for separated tests scripts>
   
[![Pharo 11 CI](https://github.com/OpenSmock/TestProjectForBaseline/actions/workflows/Pharo11CI.yml/badge.svg)](https://github.com/OpenSmock/TestProjectForBaseline/actions/workflows/Pharo11CI.yml)

# Test Project For Baseline

## Getting Started

### Installation

To install the project on your Pharo image you can just execute the following script:

```smalltalk
Metacello new
   baseline: 'TestProjectForBaseline';
   repository: 'github://OpenSmock/TestProjectForBaseline:main/src';
   load.
```

## Dependencies

- Bloc
- Toplo
- OnBloc
- Album
  
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
