
'use strict';

import { NativeModules, Platform, Linking } from 'react-native';

const RNSibcheStoreKit = NativeModules.SibcheStoreKit;

export default class SibcheStoreKit {

    // Init sdk with your app's api key
    static init(appId, appScheme) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.init(appId, appScheme);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // Fetch list of your in-app-purchase packages
    static fetchInAppPurchasePackages(callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.fetchInAppPurchasePackages(callback);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // Fetch data of specific in-app-purchase package
    static fetchInAppPurchasePackage(packageId, callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.fetchInAppPurchasePackage(packageId, callback);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // Fetch list of active in-app-purchase packages
    static fetchActiveInAppPurchasePackages(callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.fetchActiveInAppPurchasePackages((isSuccessful, error, purchasePackagesArray) => {
                for (let i = 0; i < purchasePackagesArray.length; i++) {
                    if (purchasePackagesArray[i] && purchasePackagesArray[i].package) {
                        purchasePackagesArray[i].package = JSON.parse(purchasePackagesArray[i].package);
                    }
                }
                callback(isSuccessful, error, purchasePackagesArray);
            });
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // This command says SDK to show login view and return result
    static loginUser(callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.loginUser(callback);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // This command used to logout user from sibche. Don't use unless you know what you are doing
    static logoutUser(callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.logoutUser(callback);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // Purchase specific packageId. After finishing, we call PurchaseCallback
    static purchasePackage(packageId, callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.purchasePackage(packageId, (isSuccessful, error, purchasePackage) => {
                if (purchasePackage && purchasePackage.package) {
                    purchasePackage.package = JSON.parse(purchasePackage.package);
                }
                callback(isSuccessful, error, purchasePackage);
            });
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // Handle in-app-purchase returning from payment
    static openUrl(url) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.openUrl(url);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // Consumes purchased package item (if is consumable)
    static consumePurchasePackage(purchasePackageId, callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.consumePurchasePackage(purchasePackageId, callback);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }

    // Gets current user's data including of login status, user cellphone number and userId
    static getCurrentUserData(callback) {
        if (Platform.OS === 'ios') {
            RNSibcheStoreKit.getCurrentUserData(callback);
        } else {
            console.log("This plugin support only iOS devices");
        }
    }
}
