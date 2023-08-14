import {SafeAreaView, Text} from 'react-native';
import React from 'react';
import {NativeModules} from 'react-native';

console.log(NativeModules.Counter);
NativeModules.Counter.increment(value => {
  console.log('Count is ', value);
});
console.log(NativeModules.Counter.getConstants());

const NativeModulesApp = () => {
  return (
    <SafeAreaView style={{marginHorizontal: 10}}>
      <Text>Native Modules App</Text>
    </SafeAreaView>
  );
};

export default NativeModulesApp;
