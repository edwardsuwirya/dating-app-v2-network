public struct BaseNetworkLibrary {
    public init() {
    }
    
    public func networkAssembly()->NetworkAssembly{
        return NetworkAssembly()
    }
    
    public func memberRegistrationRequestFactory()->MemberRegistrationRequest{
        return MemberRegistrationRequest()
    }
    
    public func memberRegistrationResponseFactory(memberId:String)->MemberRegistrationResponse{
        return MemberRegistrationResponse(memberId: memberId)
    }
}
